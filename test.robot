*** Settings ***
Documentation  Phonebooking API Test
Library     RequestsLibrary
Library     Collections
Library     DateTime


*** Variables ***
${Samsung Galaxy S9}  Samsung Galaxy S9
${Samsung Galaxy S8}  Samsung Galaxy S8
${Motorola Nexus 6}   Motorola Nexus 6
${Oneplus 9}  Oneplus 9
${Apple iPhone 13}  Apple iPhone 13v
${Apple iPhone 12}  Apple iPhone 12
${Apple iPhone 11}  Apple iPhone 11
${iPhone X}  iPhone X
${Nokia 3310}  Nokia 3310
${BASE_URL}  http://localhost:5000
${END_POINT_BOOK_PHONE}  /book-phone
${END_POINT_PHONE_BOOKING}  /phone-booking
${END_POINT_PHONE_INFO}  /phone-info
${BOOKED_BY}  John Doe
${RETURND_BY}  John Doe
${BOOKED_AT}  01/05/2022 00:00:00

*** Test Cases ***
Book a Phone - ${Samsung Galaxy S9} 
    ${response}  POST  url=${BASE_URL}${END_POINT_BOOK_PHONE}  json={"phone_name": ${Samsung Galaxy S9} , "booked_by": ${BOOKED_BY} }
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} No
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Return a Phone - ${Samsung Galaxy S9} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_BOOKING}  API /return-phone  json={"phone_name": ${Samsung Galaxy S9}, "returned_by": ${RETURND_BY}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} Yes
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Get Phone Information - ${Samsung Galaxy S9} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_INFO}  json={"phone_name": ${Samsung Galaxy S9}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["technology"]} "GSM / HSPA / LTE"
    Should Be True ${response.json()["2g_bands"]} is not None
    Should Be True ${response.json()["3g_bands"]} is not None
    Should Be True ${response.json()["4g_bands"]} is not None

Book a Phone - ${Samsung Galaxy S8} 
    ${response}  POST  url=${BASE_URL}${END_POINT_BOOK_PHONE}  json={"phone_name": ${Samsung Galaxy S9} , "booked_by": ${BOOKED_BY} }
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} No
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Return a Phone - ${Samsung Galaxy S8} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_BOOKING}  API /return-phone  json={"phone_name": ${Samsung Galaxy S9}, "returned_by": ${RETURND_BY}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} Yes
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Get Phone Information - ${Samsung Galaxy S8} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_INFO}  json={"phone_name": ${Samsung Galaxy S9}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["technology"]} "GSM / HSPA / LTE"
    Should Be True ${response.json()["2g_bands"]} is not None
    Should Be True ${response.json()["3g_bands"]} is not None
    Should Be True ${response.json()["4g_bands"]} is not None    

Book a Phone - ${Motorola Nexus 6} 
    ${response}  POST  url=${BASE_URL}${END_POINT_BOOK_PHONE}  json={"phone_name": ${Samsung Galaxy S9} , "booked_by": ${BOOKED_BY} }
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} No
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Return a Phone - ${Motorola Nexus 6} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_BOOKING}  API /return-phone  json={"phone_name": ${Samsung Galaxy S9}, "returned_by": ${RETURND_BY}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} Yes
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Get Phone Information - ${Motorola Nexus 6} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_INFO}  json={"phone_name": ${Samsung Galaxy S9}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["technology"]} "GSM / HSPA / LTE"
    Should Be True ${response.json()["2g_bands"]} is not None
    Should Be True ${response.json()["3g_bands"]} is not None
    Should Be True ${response.json()["4g_bands"]} is not None

Book a Phone - ${Oneplus 9} 
    ${response}  POST  url=${BASE_URL}${END_POINT_BOOK_PHONE}  json={"phone_name": ${Samsung Galaxy S9} , "booked_by": ${BOOKED_BY} }
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} No
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Return a Phone - ${Oneplus 9} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_BOOKING}  API /return-phone  json={"phone_name": ${Samsung Galaxy S9}, "returned_by": ${RETURND_BY}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} Yes
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Get Phone Information - ${Oneplus 9} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_INFO}  json={"phone_name": ${Samsung Galaxy S9}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["technology"]} "GSM / HSPA / LTE"
    Should Be True ${response.json()["2g_bands"]} is not None
    Should Be True ${response.json()["3g_bands"]} is not None
    Should Be True ${response.json()["4g_bands"]} is not None

Book a Phone - ${Apple iPhone 13} 
    ${response}  POST  url=${BASE_URL}${END_POINT_BOOK_PHONE}  json={"phone_name": ${Samsung Galaxy S9} , "booked_by": ${BOOKED_BY} }
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} No
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Return a Phone - ${Apple iPhone 13} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_BOOKING}  API /return-phone  json={"phone_name": ${Samsung Galaxy S9}, "returned_by": ${RETURND_BY}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} Yes
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Get Phone Information - ${Apple iPhone 13} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_INFO}  json={"phone_name": ${Samsung Galaxy S9}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["technology"]} "GSM / HSPA / LTE"
    Should Be True ${response.json()["2g_bands"]} is not None
    Should Be True ${response.json()["3g_bands"]} is not None
    Should Be True ${response.json()["4g_bands"]} is not None   

Book a Phone - ${Apple iPhone 12} 
    ${response}  POST  url=${BASE_URL}${END_POINT_BOOK_PHONE}  json={"phone_name": ${Samsung Galaxy S9} , "booked_by": ${BOOKED_BY} }
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} No
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Return a Phone - ${Apple iPhone 12} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_BOOKING}  API /return-phone  json={"phone_name": ${Samsung Galaxy S9}, "returned_by": ${RETURND_BY}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} Yes
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Get Phone Information - ${Apple iPhone 12} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_INFO}  json={"phone_name": ${Samsung Galaxy S9}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["technology"]} "GSM / HSPA / LTE"
    Should Be True ${response.json()["2g_bands"]} is not None
    Should Be True ${response.json()["3g_bands"]} is not None
    Should Be True ${response.json()["4g_bands"]} is not None   


Book a Phone - ${Apple iPhone 11} 
    ${response}  POST  url=${BASE_URL}${END_POINT_BOOK_PHONE}  json={"phone_name": ${Samsung Galaxy S9} , "booked_by": ${BOOKED_BY} }
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} No
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Return a Phone - ${Apple iPhone 11} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_BOOKING}  API /return-phone  json={"phone_name": ${Samsung Galaxy S9}, "returned_by": ${RETURND_BY}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} Yes
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Get Phone Information - ${Apple iPhone 11} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_INFO}  json={"phone_name": ${Samsung Galaxy S9}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["technology"]} "GSM / HSPA / LTE"
    Should Be True ${response.json()["2g_bands"]} is not None
    Should Be True ${response.json()["3g_bands"]} is not None
    Should Be True ${response.json()["4g_bands"]} is not None    

Book a Phone - ${iPhone X} 
    ${response}  POST  url=${BASE_URL}${END_POINT_BOOK_PHONE}  json={"phone_name": ${Samsung Galaxy S9} , "booked_by": ${BOOKED_BY} }
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} No
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Return a Phone - ${iPhone X} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_BOOKING}  API /return-phone  json={"phone_name": ${Samsung Galaxy S9}, "returned_by": ${RETURND_BY}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} Yes
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Get Phone Information - ${iPhone X} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_INFO}  json={"phone_name": ${Samsung Galaxy S9}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["technology"]} "GSM / HSPA / LTE"
    Should Be True ${response.json()["2g_bands"]} is not None
    Should Be True ${response.json()["3g_bands"]} is not None
    Should Be True ${response.json()["4g_bands"]} is not None   

Book a Phone - ${Nokia 3310} 
    ${response}  POST  url=${BASE_URL}${END_POINT_BOOK_PHONE}  json={"phone_name": ${Samsung Galaxy S9} , "booked_by": ${BOOKED_BY} }
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} No
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Return a Phone - ${Nokia 3310} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_BOOKING}  API /return-phone  json={"phone_name": ${Samsung Galaxy S9}, "returned_by": ${RETURND_BY}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["availability"]} Yes
    Should Be Equal As Strings ${response.json()["booked_by"]} ${BOOKED_BY}
    Should Be True ${response.json()["booked_at"]} is not None

Get Phone Information - ${Nokia 3310} 
    ${response}  POST  url=${BASE_URL}${END_POINT_PHONE_INFO}  json={"phone_name": ${Samsung Galaxy S9}}
    Should Be Equal As Strings ${response.status_code} 200
    Should Be Equal As Strings ${response.json()["technology"]} "GSM / HSPA / LTE"
    Should Be True ${response.json()["2g_bands"]} is not None
    Should Be True ${response.json()["3g_bands"]} is not None
    Should Be True ${response.json()["4g_bands"]} is not None   