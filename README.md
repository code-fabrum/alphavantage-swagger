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

Example:-

```bash
curl "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=IBM&apikey=YOUR_API_KEY"
```

## Interactive API documentation

The repository includes an interactive Swagger UI site with **Authorize** and **Try it out** support. It uses the real Alpha Vantage `/query` endpoint when a request is sent.

After publishing, the documentation is available at:

`https://<github-owner>.github.io/<repository-name>/`

### Publish with GitHub Pages

1. Push this repository to GitHub's `main` branch.
2. In **Settings** → **Pages**, set **Build and deployment** to **GitHub Actions**.
3. The included workflow at `.github/workflows/deploy-pages.yml` deploys the site after every push to `main`.
4. Open the published URL, choose **Authorize**, and enter an Alpha Vantage API key. The key remains in the browser only.

## Notes

- The spec is designed as a reusable contract for tooling, code generation, and API exploration.
- The interactive site loads Swagger UI from a CDN and needs an internet connection.
- You can also import [openapi.yaml](openapi.yaml) into other OpenAPI tools or code generators.
