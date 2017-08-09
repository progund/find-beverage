#!/bin/bash

API_BASE=https://www.systembolaget.se/api
PRODUCTS_URL=${API_BASE}/assortment/products/xml
SHOPS_URL=${API_BASE}/assortment/stores/xml
STOCK_URL=${API_BASE}/assortment/stock/xml

FILE_DIR=/tmp/systembolaget.se/
PRODUCTS_FILE=products.xml
SHOPS_FILE=shops.xml
STOCK_FILE=stock.xml

exit_if_error()
{
    if [ $1 -ne 0 ]
    then
        echo "$2"
        exit $1
    fi
}

get_url()
{
    URL=$1
    FILE=$2

    VALID_CACHE_FILE=$(find ${FILE_DIR} -mmin +60 -name ${FILE})

    if [ ! -f ${FILE_DIR}/$FILE ] || [ "${VALID_CACHE_FILE}" != "" ] 
    then
        curl -s "$URL" -o "${FILE_DIR}/$FILE"
        exit_if_error $? "Failed downloading $URL"
    else
        echo skip download
    fi
}

mkdir -p $FILE_DIR

#
#
#
get_url $PRODUCTS_URL $PRODUCTS_FILE
xmllint --xpath //Namn ${FILE_DIR}/${PRODUCTS_FILE}  | sed -e 's,</Namn>,\n,g' -e 's,<Namn>,,g'



