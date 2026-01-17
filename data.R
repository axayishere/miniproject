library(tidyquant)

symbols <- c("AAPL", "MSFT", "GOOGL", "AMZN")
prices_raw <- tq_get(symbols, from = Sys.Date() - 180, get = "stock.prices")

saveRDS(prices_raw, "stock_data.rds")
cat("✅ Data saved! stock_data.rds created.\n")
