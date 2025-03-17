 # 1-What is the minimum "buy" price among all items in the "trade" table?
 USE mydb;
SELECT MIN(buy) AS minimum_price
FROM trade;
 # 2-How many unique entries "item_name" are there in the "items" table?
SELECT COUNT(DISTINCT item_name) AS item_name
FROM items;
# 4-What is the maximum "sell" price and the minimum "buy" price among all items in the "trade" table?
SELECT MIN(buy) AS buying_price,
MAX(sell) AS selling_price
FROM trade;
# 5-How many items in the "items" table have the "diy" (Do-It-Yourself)?
SELECT COUNT(diy) AS diy_counter
FROM items
GROUP BY diy;
# 7-What is the average "kit_cost" of items in the "interactions" table when outdoor is "No"?
SELECT AVG(kit_cost) AS kit_cost_average
FROM interactions
WHERE outdoor = 'No';
