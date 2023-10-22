---
title: "Time Series project"
author: "Carla Armengol & Aixa Mas"
date: "2023-10-22"
output:
  html_document:
    df_print: paged
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```


```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r, echo = FALSE}
# Load libraries
library(wesanderson)
```

# Abstract

(Brief decription about the project)

\newpage

# Introduction

## Project overview and objectives

(About the project)

## Metadata (information about the data)

## Project developement (Road-map)

(Description about the steps followed in each part of the project)


\newpage

# Exploratory Data Analysis (EDA)

## Time Series visualisation

## Summary statistics and Key Insights

\newpage

# Time Series Descomposition





# Data loading and basic descriptive analysis

Victimas de accidentes de tráfico (fallecidos, heridos graves y leves) en vías urbanas e interurbanas en España

**Fuente**: Dirección General de Tráfico. http://www.dgt.es/es/seguridad-vial/estadisticas-e-indicadores/accidentes-30dias/series-historicas/


```{r}
serie=window(ts(read.table("victimas.dat")/1000,start=1993,freq=12),start=2009)
```

```{r}
plot(serie, main="Victimas de Accidentes de Tráfico en España", ylab="Miles de Individuos")
abline(v=1992:2020,lty=3,col=4)
```


