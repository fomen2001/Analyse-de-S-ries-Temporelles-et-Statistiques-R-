# =================================================================
# ANALYSE DE SÉRIES TEMPORELLES ET STATISTIQUES SANITAIRES
# Projet Académique 2025
# =================================================================

# 1. Simulation de données de santé (ex: Incidence d'une pathologie)
set.seed(123)
t <- seq(from = as.Date("2020-01-01"), to = as.Date("2024-12-01"), by = "month")
n <- length(t)

# Composantes : Tendance haussière + Saisonnalité annuelle + Bruit
trend <- 0.5 * (1:n)
seasonality <- 10 * sin(2 * pi * (1:n) / 12)
noise <- rnorm(n, mean = 0, sd = 5)
incidence <- 50 + trend + seasonality + noise

df_health <- data.frame(Date = t, Value = incidence)

# 2. Analyse de la série temporelle
# Conversion en objet Time Series (ts)
health_ts <- ts(df_health$Value, start = c(2020, 1), frequency = 12)

# Décomposition : Tendance, Saisonnalité, Résidus
decomp <- decompose(health_ts)

# 3. Modélisation Statistique
# Modèle Linéaire pour quantifier la croissance de la tendance
model <- lm(Value ~ seq_along(Value), data = df_health)

# 4. Visualisation (Base R pour compatibilité maximale)
# Diviser la fenêtre graphique
par(mfrow = c(2, 1))

# Plot 1 : Données brutes et Tendance
plot(health_ts, main = "Évolution de l'Incidence Sanitaire (2020-2024)", 
     ylab = "Nombre de cas", xlab = "Temps", col = "blue", lwd = 2)
abline(model, col = "red", lty = 2)

# Plot 2 : Décomposition saisonnière
plot(decomp$seasonal, main = "Saisonnalité extraite (Cycle annuel)", 
     ylab = "Variation", col = "darkgreen")

# 5. Résultats Statistiques
cat("--- Résumé du Modèle Statistique ---\n")
print(summary(model))

# Interprétation : Coefficient de tendance
growth_rate <- coef(model)[2]
cat("\nInterprétation : La pathologie augmente en moyenne de", 
    round(growth_rate, 2), "cas par mois.\n")