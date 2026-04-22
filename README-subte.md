# 🚇 Análisis del Sistema de Subte de Buenos Aires

> *"El Subte de Buenos Aires es un sistema en tensión: alta demanda, tarifas crecientes y una accesibilidad que no acompaña el crecimiento."*

Proyecto de análisis de datos end-to-end sobre el sistema de transporte subterráneo de la Ciudad de Buenos Aires, abarcando el período **2014–2021** con más de **83 millones de registros**.

---

## 📁 Estructura del proyecto

```
subte-buenos-aires-analysis/
│
├── 01_EDA/
│   └── subte_eda.ipynb        # Análisis exploratorio en Python
├── 02_ETL/
│   └── subte_etl.sql          # Limpieza, transformación y carga en MySQL
├── 03_Dashboard/
│   └── capturas/              # Screenshots del dashboard en Power BI
└── data/
    └── README.md              # Descripción de los datasets utilizados
```

---

## 🔄 Etapas del proyecto

### Etapa 1 — Análisis Exploratorio (EDA)
**Herramientas:** Python · Pandas · Matplotlib · Seaborn · Jupyter

- Exploración de +83M registros de pasajeros por molinete (2014–2021)
- Análisis de evolución anual, estacionalidad mensual y franjas horarias
- Estudio de tarifas históricas y su relación con la demanda
- Identificación de estaciones y líneas con mayor concentración de pasajeros

### Etapa 2 — ETL & Data Warehouse
**Herramientas:** MySQL · SQL

- Limpieza y normalización de 8 archivos CSV con encodings inconsistentes
- Construcción de un **star schema** con `fact_resumen` como tabla central
- Tabla de mapeo para +100 variantes de nombres de estaciones
- Normalización de nombres de molinetes via `REGEXP_REPLACE`
- Población de `dim_fecha` mediante CTE recursiva

### Etapa 3 — Dashboard en Power BI
**Herramientas:** Power BI · DAX

5 páginas interactivas construidas sobre el star schema:

| Página | Descripción |
|---|---|
| Resumen General | KPIs globales, top estaciones y evolución anual |
| Tarifas e Ingresos | Relación precio-demanda e ingresos por línea |
| Análisis Temporal | Estacionalidad, día de semana y franja horaria |
| Cuellos de Botella | Molinetes y estaciones más saturados |
| Accesibilidad | Infraestructura accesible por línea y estación |

---

## 📊 Hallazgos clave

- **5 estaciones** sin ninguna infraestructura de accesibilidad (Alberti, Pasco, Río de Janeiro, Plaza de los Virreyes, Scalabrini Ortiz)
- **Línea A** concentra los principales cuellos de botella de demanda
- Las **tarifas crecieron sostenidamente** mientras la demanda post-COVID no se recuperó
- Picos de demanda consistentes en franjas **8–9 AM** y **17–18 PM**
- El **miércoles** es el día de mayor afluencia de pasajeros
- **2018** fue el año pico de demanda antes del COVID-19

---

## 🛠️ Stack técnico

![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=flat-square&logo=pandas&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=flat-square&logo=powerbi&logoColor=black)

---

## 📂 Datos

Los datasets utilizados provienen del portal de datos abiertos del Gobierno de la Ciudad de Buenos Aires ([data.buenosaires.gob.ar](https://data.buenosaires.gob.ar)):

- Pasajeros por molinete por línea (2014–2021)
- Resumen de viajes por línea
- Tarifas históricas
- Estaciones con infraestructura accesible

> Los archivos CSV no están incluidos en el repositorio por su tamaño. Los datasets originales están disponibles en el portal mencionado.

---

## 👤 Autor

**Nicolás Acevedo**  
Data Analyst · E-commerce & Digital

[![LinkedIn](https://img.shields.io/badge/LinkedIn-nicolas--acevedo-0077B5?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/nicolas-acevedo-)
[![Email](https://img.shields.io/badge/Email-acevedonicolas83@gmail.com-D14836?style=flat-square&logo=gmail&logoColor=white)](mailto:acevedonicolas83@gmail.com)
# 🚇 Análisis del Sistema de Subte de Buenos Aires

> *"El Subte de Buenos Aires es un sistema en tensión: alta demanda, tarifas crecientes y una accesibilidad que no acompaña el crecimiento."*

Proyecto de análisis de datos end-to-end sobre el sistema de transporte subterráneo de la Ciudad de Buenos Aires, abarcando el período **2014–2021** con más de **83 millones de registros**.

---

## 📁 Estructura del proyecto

```
subte-buenos-aires-analysis/
│
├── 01_EDA/
│   └── subte_eda.ipynb        # Análisis exploratorio en Python
├── 02_ETL/
│   └── subte_etl.sql          # Limpieza, transformación y carga en MySQL
├── 03_Dashboard/
│   └── capturas/              # Screenshots del dashboard en Power BI
└── data/
    └── README.md              # Descripción de los datasets utilizados
```

---

## 🔄 Etapas del proyecto

### Etapa 1 — Análisis Exploratorio (EDA)
**Herramientas:** Python · Pandas · Matplotlib · Seaborn · Jupyter

- Exploración de +83M registros de pasajeros por molinete (2014–2021)
- Análisis de evolución anual, estacionalidad mensual y franjas horarias
- Estudio de tarifas históricas y su relación con la demanda
- Identificación de estaciones y líneas con mayor concentración de pasajeros

### Etapa 2 — ETL & Data Warehouse
**Herramientas:** MySQL · SQL

- Limpieza y normalización de 8 archivos CSV con encodings inconsistentes
- Construcción de un **star schema** con `fact_resumen` como tabla central
- Tabla de mapeo para +100 variantes de nombres de estaciones
- Normalización de nombres de molinetes via `REGEXP_REPLACE`
- Población de `dim_fecha` mediante CTE recursiva

### Etapa 3 — Dashboard en Power BI
**Herramientas:** Power BI · DAX

5 páginas interactivas construidas sobre el star schema:

| Página | Descripción |
|---|---|
| Resumen General | KPIs globales, top estaciones y evolución anual |
| Tarifas e Ingresos | Relación precio-demanda e ingresos por línea |
| Análisis Temporal | Estacionalidad, día de semana y franja horaria |
| Cuellos de Botella | Molinetes y estaciones más saturados |
| Accesibilidad | Infraestructura accesible por línea y estación |

---

## 📊 Hallazgos clave

- **5 estaciones** sin ninguna infraestructura de accesibilidad (Alberti, Pasco, Río de Janeiro, Plaza de los Virreyes, Scalabrini Ortiz)
- **Línea A** concentra los principales cuellos de botella de demanda
- Las **tarifas crecieron sostenidamente** mientras la demanda post-COVID no se recuperó
- Picos de demanda consistentes en franjas **8–9 AM** y **17–18 PM**
- El **miércoles** es el día de mayor afluencia de pasajeros
- **2018** fue el año pico de demanda antes del COVID-19

---

## 🛠️ Stack técnico

![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=flat-square&logo=pandas&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=flat-square&logo=powerbi&logoColor=black)

---

## 📂 Datos

Los datasets utilizados provienen del portal de datos abiertos del Gobierno de la Ciudad de Buenos Aires ([data.buenosaires.gob.ar](https://data.buenosaires.gob.ar)):

- Pasajeros por molinete por línea (2014–2021)
- Resumen de viajes por línea
- Tarifas históricas
- Estaciones con infraestructura accesible

> Los archivos CSV no están incluidos en el repositorio por su tamaño. Los datasets originales están disponibles en el portal mencionado.

---

## 👤 Autor

**Nicolás Acevedo**  
Data Analyst · E-commerce & Digital

[![LinkedIn](https://img.shields.io/badge/LinkedIn-nicolas--acevedo-0077B5?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/nicolas-acevedo-)
[![Email](https://img.shields.io/badge/Email-acevedonicolas83@gmail.com-D14836?style=flat-square&logo=gmail&logoColor=white)](mailto:acevedonicolas83@gmail.com)
