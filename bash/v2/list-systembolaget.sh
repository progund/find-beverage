#!/bin/bash

API_BASE=https://www.systembolaget.se/api
PRODUCTS_URL=${API_BASE}/assortment/products/xml

FILE_DIR=/tmp/systembolaget.se/
PRODUCTS_FILE=${FILE_DIR}/products.xml

mkdir -p $FILE_DIR

#
#
#
curl -s $PRODUCTS_URL -o $PRODUCTS_FILE

xmllint --xpath //Namn ${PRODUCTS_FILE}  | sed -e 's,</Namn>,\n,g' -e 's,<Namn>,,g'



