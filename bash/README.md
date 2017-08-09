This folder contains scripts to download and use data from [https://en.wikipedia.org/wiki/Systembolaget](Systembolaget).

# v1

Very simple version of the script. The script simply downloads and
prints (both using curl) the list of products.

## Problems
* hard to read the xml file, would be good to see only product names

# v2

Slightly more advanced version of the script.
* variables to modularise the url and file
* temp dir
* xmllint to print only product names, removing tag with sed

## Problems
* for every use the url is downloaded
* what if download failes

# v3

New features:
* only downloads url (to file) if file does not exist
* exits with error message if download failes

## Problems
* what if file is updated on server

# v4

New features:
* if file is older them 60 mins (1 hour) download is done

## Problems
* would be nice to see sorted products
* would be nice to see price and category as well

# v5

New features:
* sorted list of products (only uiques)
* price, nr, alocohol printed


