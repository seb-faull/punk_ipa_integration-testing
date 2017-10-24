# Brew Dog Punk API Service

A service object model that uses Brew Dog's API that searches and filters through their different kinds of beers, including a testing framework.

## Technologies Used:
1. httparty
2. json
3. rspec

## Installation
Either download the ZIP or clone the git repository with the following command:
```git clone git@github.com:seb-faull/punk_ipa_integration-testing.git```

You must also install, if you haven't already:
```gem install json```

```gem install httparty```

```gem install rspec```

## How to use

The different services you can use for the API is searching for an individual beer, all beers or a random beer.

#### Single Beer results
To get results for a single beer you need to call the ```single_beer_call``` method in the ```punk_beers_object.rb``` file. This method must take a parameter, in this case an ID. The method parses in the JSON data from the API in to the class. To do this you must call outside the class:
```results = PunkIpaBeersService.new```
```puts results.single_beer_call('id')```

#### Random Beer results
To get results for a random beer you need to call the ```random_beer_call``` method in the ```punk_beers_object.rb``` file. This method takes no parameter. To do this you must call outside the class:
```random_results = PunkIpaBeersService.new```
```p random_results.random_beer_call```

#### All beers (with an optional query)
To get results for all beers you need to call the ```beers``` method in the ```punk_beers_object.rb``` file. This method can take optional parameters. If the parameters are left blank then the results will give back all the beers.

To get results for all the beers you must call this outside the class:
```all_results = PunkIpaBeersService.new```
```p all_results.beers```

To get results on beers based on certain criteria, you must call this outside the class:
```criteria_results = PunkIpaBeersService.new```
```p criteria_results.beers({search_criteria})```

#### Search criteria is a hash containing the following possible key-values:
![Possible Punk API Search Criteria]
(Punk_Api_Search_Params.png)
