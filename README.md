# ExchangeRates
This repo is for my develop interview. 

## Goal:

#### Develop a Currency Conversion App that allows a user view exchange rates for any given currency

- [ ] Create a Project for a Mobile Phone
- [ ] Android: _Java/Kotlin_ | iOS: _Swift_ (sorry, no Objective-C please!)
### Functional Requirements:
- [ ] Exchange rates must be fetched from: https://currencylayer.com/documentation  
- [ ] User must be able to select a currency from a list of currencies available from the API
- [ ] User should then see a list of exchange rates for the selected currency
- [ ] Rates should be persisted locally and refreshed no more frequently than every 30 minutes (to limit bandwidth usage)
- [ ] Message the HR coordinator to get a API Access Key for using the API.

### UI Suggestion:
- [ ] Some way to select a currency
- [ ] A list/grid of exchange rates
- [ ] It doesn't need to be pretty, it just needs to be functional ;)

![UI Suggested Wireframe](https://github.com/Pay-Baymax/MobileDeveloperChallenge/raw/master/ui_suggestion.png)


## Output:

### Config
- Modify App-Config  for `refresh_rate` in seconds, `secret_key` to your owns if necessary.
- Modify Api-Params for `source` by currency code provided in API.

### Feature
- Watch Currency Change Live (refresh periodicly every 30 mins by default)
- List of Currency provided by API
- Always live using background-fetch (live every 30 mins by default)
- Select Desired source currency to watch and compare rates
