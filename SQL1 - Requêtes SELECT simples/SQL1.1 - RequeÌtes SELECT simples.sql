/* La liste des bureaux (adresse et ville) triés par pays décroissant puis par état */
SELECT addressLine1, addressLine2, city, country, state
FROM offices
ORDER BY country DESC, state

/* RESULTAT ==> 7 lignes / 100 Market Street */

/* La liste des employées (employeeNumber, lastName, officeCode) trier par bureau */
SELECT employeeNumber, lastName, officeCode
FROM employees
ORDER BY officeCode

/* RESULTAT ==> 23 lignes / 1002 Murphy */

/* La liste des produits (productCode, productName, quantityInStock, buyPrice) trier par prix d'achat puis par qttéen Stock */
SELECT productCode, productName, quantityInStock, buyPrice
FROM products
ORDER BY buyPrice, quantityInStock

/* RESULTAT ==> 110 lignes / S24_2840 1958 Chevy Corvette Limited Edition */

/* La liste des commandes (orderNumber, orderDate, shippedDate) trier par date d'achat Décroissant puis par date d'envoi */
SELECT orderNumber, orderDate, shippedDate
FROM orders
ORDER BY orderDate DESC, shippedDate
/* RESULTAT ==> 326 lignes / 10425 */