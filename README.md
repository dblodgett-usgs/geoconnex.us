# Permanent Identifiers for US Hydrologic Features
================================================

This is the registry for URIs with the base https://geoconnex.us, principally to assign permanent identifiers and redirects for hydrologic features in the United States as an implementation [Internet of Water](https://www.aspeninstitute.org/tag/internet-of-water/) principles. Persistent identifiers are important for maintaining a production system of linked hydrologic data systems, of the sort that [SELFIE](https://github.com/opengeospatial/SELFIE) experimented. 

## Adding Permanent Identifiers to geoconnex.us

The process for adding a URI is generally similar to that used by [w3id.org](https://github.com/perma-id/w3id.org).

There is a strong preference for creating "[1:1](#adding-11-redirects-to-geoconnexus)" redirects. That is, specifying an exact redirect from a geoconnex.us-based URI to the URI of the hydrologic feature you have a web resource about, for each and every individual feature. However, if you need to create a large number of redirects (>= 10,000) for a given collection of features, we will require a [regular expression matching redirect](#adding-regular-expression-redirects-to-geoconnexus). 

If you have >=10,000 features, but these features can be split in a consistent way into sub-collections, all of which number <10,000 features (as might be the case for features that can be divided by geography, jurisdiction, theme, or type), then you might consider submitting multiple collections of 1:1 redirects.

### Adding 1:1 redirects to geoconnex.us


The preferred way to create the redirects yourself is by following these steps:

1. Fork the [`internetofwater/geoconnex.us`](https://github.com/internetofwater/geoconnex.us) repository.
2. Add a directory corresponding to the namespace you want. For example '/example-namespace/
3. Add a set of redirects using the [csv template](https://github.com/internetofwater/geoconnex.us/blob/master/example-namespace/example_ids.csv) or a geoJSON file with the exact same field names as the csv template. You may consider adding multiple separate sets of redirects, as long as each set is comprised of <=10,000 
4. (Optional) Add a `README.md` detailing contact persons and 
   (a subset of) your permanent identifiers in your namespace directory. For an example, 
   see [`example-namespace/README.md`](example-namespace/README.md)
5. Commit your changes and submit a 
   [pull request](https://github.com/internetofwater/geoconnex.us/pulls).
6. geoconnex.us administrators will review your pull request and merge it if 
   everything looks correct. Once the pull request is merged, the changes go
   live within (a time period)

### Adding regular expression redirects to geoconnex.us

