/* Le total des paiements effectués de chaque client (numéro, nom et pays) américain, allemand ou français de plus de 50000$ trié par pays puis par total des paiements décroissant */
SELECT cus.customerNumber, customerName, country, SUM(pay.amount) AS totalPayment
FROM customers cus
INNER JOIN payments pay ON pay.customerNumber = cus.customerNumber
WHERE country IN ('France', 'Germany', 'USA')
GROUP BY country, customerName, cus.customerNumber 
HAVING totalPayment > 50000
ORDER BY country, totalPayment DESC
/* RESULTAT ==> 38 lignes / 146 / 130305.35 */


/* Le montant total de chaque commande (numéro et date) des clients New-Yorkais (nom) trié par nom du client puis par date de commande */
SELECT customerName, ord.orderNumber, ord.orderDate, SUM(ordl.quantityOrdered * ordl.priceEach) AS totalAmount
FROM customers cus
INNER JOIN orders ord ON ord.customerNumber = cus.customerNumber
INNER JOIN orderdetails ordl ON ord.orderNumber = ordl.orderNumber
WHERE city = 'NYC'
GROUP BY customerName, ord.orderNumber, ord.orderDate
ORDER BY customerName, ord.orderDate
/* RESULTAT ==> 16 lignes / Classic Legends / 10115 / 21665.98 */