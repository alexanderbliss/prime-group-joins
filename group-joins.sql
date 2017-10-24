
--1. get all custumers and their adresses.

```
SELECT * FROM "customers" JOIN "addresses" ON "customers"."id" = "addresses"."id";
```

--2. get all orders and their line items.
```
SELECT*FROM "orders" JOIN "line_items" ON "orders"."id" = "line_items"."id";
```
--3. which warehouse
```
SELECT "products"."description" , "warehouse"."warehouse" FROM "products"
JOIN "warehouse_product" ON "products"."id" = "warehouse_product"."product_id" JOIN "warehouse"
ON "warehouse"."id" = "warehouse_product"."warehouse_id" WHERE "products"."description" = 'cheetos'  ;
```
--4. which warehouses have diet pepsi

```
SELECT "products"."description" , "warehouse"."warehouse" FROM "products"
JOIN "warehouse_product" ON "products"."id" = "warehouse_product"."product_id" JOIN "warehouse"
ON "warehouse"."id" = "warehouse_product"."warehouse_id" WHERE "products"."description" = 'diet pepsi' ;
```
--5.Get the number of orders for each customer
```
SELECT SUM("id") FROM "orders" ;
```

--6. how many customer are there
```
SELECT count(*) FROM "customers";
```
/*7.How many products do we carry*/
```
SELECT count(*) FROM "products";
```
--8. what is the total avaliabel on-hand quanity of diet pepsi
```
SELECT SUM("on_hand") FROM "warehouse_product" WHERE "product_id" = 6;
```
