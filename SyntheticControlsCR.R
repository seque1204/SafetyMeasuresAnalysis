#install.packages("Synth")

library(Synth)

crc_data_path <- "C:/Users/jsequ/OneDrive - University of Kentucky/[01] University/[02] Sophmore Year/[03] Summer/CS395/data.csv"

crc_dataframe <- read.csv(crc_data_path)

dataprep_out <- dataprep(
  foo = crc_dataframe,
  
  #Predictors of safety: https://www.visionofhumanity.org/chart-of-the-week-indicators-of-peace/
  predictors = c("perceived.criminality.in.society", "displaced.people", "political.instability", 
                 "political.terror", "terrorist.activity", "homicides","violent.crime", 
                 "violent.demonstrations", "jailed.population", "security.officers.and.police"),
  
  dependent = 'safety.and.security',
  unit.variable = 'country_code',
  time.variable = 'year',
  treatment.identifier = 'Costa Rica',
  controls.identifier =  unique(crc_dataframe$country[
      -which(crc_dataframe$country == 'Costa Rica')]),
  time.predictors.prior = 2008:2022,
  time.optimize.ssr = 2008:2022,
  time.plot = 2008:2024,
  unit.names.variable = 'country'
)

synth_out <- synth(
  data.prep.obj = dataprep_out
)


plot(
  main = 'Costa Rica Safety and Security (2008 - 2024)',
  2008:2024,
  dataprep_out$Y0plot %*% synth_out$solution.w,
  type = 'l',
  lty = 'dashed', 
  col = 'blue',
  lwd = 2,
  ylim = c(2,4),
  xlab = 'Year',
  ylab = 'Score out of 5 (lower is safer)'
  )
  
lines(2008:2024,dataprep_out$Y1plot, col = 'green', lwd = 2)
abline(v = 2022, col = "black", lty = "dashed")
text(2021, 2.3, "New President ->", col = "red", srt = 0, pos = 1, cex = 0.6)
legend("topright", legend = c("Costa Rica", "Synthetic Costa Rica"), col = c('green', 'blue'), lty = 1:2, bty = 'y')


