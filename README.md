# Alpha Vantage Swagger

This repository contains an OpenAPI 3.1 specification for the Alpha Vantage market data API.

## Contents

- [openapi.yaml](openapi.yaml) — the API contract for Alpha Vantage endpoints including time series, technical indicators, fundamentals, market overview, and news sentiment.

## Included endpoints

- Daily, weekly, monthly, and intraday time series
- Technical indicators such as SMA, EMA, RSI, and MACD
- Company overview and earnings data
- News sentiment feed
- Top movers, sector performance, and market status

## Authentication

All requests require an `apikey` query parameter.

Example:

```bash
curl "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=IBM&apikey=YOUR_API_KEY"
```

## Notes

- The spec is designed as a reusable contract for tooling, code generation, and API exploration.
- The YAML has been validated as syntactically correct OpenAPI.
- You can import [openapi.yaml](openapi.yaml) into Swagger UI, Redoc, or code generators.
