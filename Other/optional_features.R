### OPTIONAL FEATURES

# FUEL & GENERIC CPI DATA INDEX = LAST YEAR PRICE

CPI <- read_excel("./IPC_proj.xlsx", skip = 7, n_max = 4)

CPI_generic <- rev(t(CPI[1, 26:157]))
CPI_generic <- window(ts(CPI_generic, start=2009, freq=12), start=2009)

CPI_fuel <- rev(t(CPI[2, 26:157]))
CPI_fuel <- window(ts(CPI_fuel, start=2009, freq=12), start=2009)

CPI_gasoil <- rev(t(CPI[3, 26:157]))
CPI_gasoil <- window(ts(CPI_gasoil, start=2009, freq=12), start=2009)

CPI_gasoline <- rev(t(CPI[4, 26:157]))
CPI_gasoline <- window(ts(CPI_gasoline, start=2009, freq=12), start=2009)


plot(CPI_generic, main="Fuel index prices & CPI\nIndex 100 = Past year data", ylab="Index", lwd = 1.5, ylim = c(-50, 50))
abline(v=2009:2020,lty=3,col=proj_palette[2])
lines(CPI_fuel, col = proj_palette[1])
lines(CPI_gasoil, col = proj_palette[3])
lines(CPI_gasoline, col = proj_palette[4])
legend("topright", col = c('black', proj_palette[c(1,3,4)]), lwd = 2, legend = c('Consumer Price Index (CPI)', 'Fuel Prices Index', 'Gasoil Prices Index', 'Gasoline Prices Index'), cex = 0.8)






# FUEL & GENERIC DATA WITH INDEX = 2021

CPI_generic <- read_excel("./IPC_generic.xlsx", skip = 7, n_max = 1)
CPI_generic <- rev(t(CPI_generic[26:157]))
CPI_generic <- window(ts(CPI_generic, start=2009, freq=12), start=2009)

CPI_fuel <- read_excel("./IPC_fuel.xlsx", skip = 7, n_max = 3)
CPI_gasoil <- rev(t(CPI_fuel[2,26:157]))
CPI_gasoline <- rev(t(CPI_fuel[3,26:157]))
CPI_fuel <- rev(t(CPI_fuel[1,26:157]))
CPI_fuel <- window(ts(CPI_fuel, start=2009, freq=12), start=2009)
CPI_gasoil <- window(ts(CPI_gasoil, start=2009, freq=12), start=2009)
CPI_gasoline <- window(ts(CPI_gasoline, start=2009, freq=12), start=2009)

plot(CPI_generic, main="Fuel index prices & CPI\nIndex 100 = 2021 data", ylab="Index", lwd = 1.5, ylim = c(80, 180))
abline(v=2009:2020,lty=3,col=proj_palette[2])
lines(CPI_fuel, col = proj_palette[1], lwd = 1.5)
lines(CPI_gasoil, col = proj_palette[3])
lines(CPI_gasoline, col = proj_palette[4])
legend("topright", col = c('black', proj_palette[c(1,3,4)]), lwd = 2, legend = c('Consumer Price Index (CPI)', 'Fuel Prices Index', 'Gasoil Prices Index', 'Gasoline Prices Index'), cex = 0.8)





