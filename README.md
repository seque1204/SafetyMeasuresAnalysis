# Measuring Safety Impacts of Political Change in Costa Rica

This project performs a **causal inference analysis** to evaluate the effects of a 2022 political event (a new presidential term) on **Costa Rica’s Safety Index**, comparing outcomes with other Central American countries from 2008 to 2024.

---

## Key Features

- **Preprocessing & Normalization**  
  Loaded, cleaned, and normalized safety-related metrics using `MinMaxScaler` for comparability across countries and years.

- **Exploratory Visualizations**  
  - Plotted country-level trajectories of the Safety Index.
  - Compared Costa Rica to the Central American average.

- **Difference-in-Differences (DiD) Analysis**  
  - Defined treatment (`Costa Rica`) and control (`El Salvador`, `Guatemala`, `Honduras`, `Nicaragua`, `Panama`) groups.
  - Estimated causal impact of the 2022 event on the Safety Index.
  - Observed a moderate post-event increase in Costa Rica’s safety risk.

- **Regression Discontinuity Design (RDD)**  
  - Used year 2022 as a cutoff to validate results.
  - Explored robustness of DiD results through local linear regression.

- **Synthetic Control Preparation**  
  - Exported normalized dataset for follow-up modeling in R.

---

## Findings

- **DiD Estimate**: +0.05 to +0.08 increase in Costa Rica’s Safety Index post-2022 relative to control group.
- **Statistical Significance**: Not statistically significant (p ≈ 0.65), suggesting that observed changes may not be fully attributable to the event.
- **RDD**: Confirmed general trend but limited by short post-treatment time window.

> A higher Safety Index value indicates greater perceived insecurity.

---

## File Structure

- `data.csv` — Raw dataset
- `data_scaled.csv` — Normalized dataset (used for modeling)
- `notebook.ipynb` — Full causal inference analysis in Python (Colab-ready)
- `synthetic_controls.R` *(planned)* — Extension using the Synthetic Control Method in R

---

## Techniques Used

- **Python Libraries**: `pandas`, `numpy`, `matplotlib`, `seaborn`, `plotly`, `scikit-learn`, `statsmodels`
- **Causal Inference**:
  - Difference-in-Differences (DiD)
  - Regression Discontinuity Design (RDD)
- **Modeling**: OLS regression with interaction terms
- **Data Visualization**: Line charts, scatter plots, and regression overlays

---

## Motivation

The goal was to assess whether political transitions can measurably impact national safety, using Costa Rica as a case study in the Central American region. This project was completed as part of a university-level course in applied causal inference.

---

## Contact

For questions or collaboration opportunities, feel free to reach out via [GitHub Issues](../../issues) or [LinkedIn]([https://www.linkedin.com/in/YOUR-USERNAME](https://www.linkedin.com/in/josequeira/)).

