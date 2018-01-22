public with sharing class customPicklist {
public String selectedCountry2{get;set;}
public List<String> selectedCategories { get; set; }

public List<SelectOption> getCountriesOptions() {
        List<SelectOption> countryOptions = new List<SelectOption>();
        countryOptions.add(new SelectOption('','-None-'));
        countryOptions.add(new SelectOption('INDIA','India'));
        countryOptions.add(new SelectOption('USA','USA'));
        countryOptions.add(new SelectOption('United Kingdom','UK'));
        countryOptions.add(new SelectOption('Germany','Germany'));
        countryOptions.add(new SelectOption('Ireland','Ireland'));

        return countryOptions;
    }
}