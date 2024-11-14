SELECT vendor, COUNT(*) as vendor_count 
FROM product
GROUP BY vendor
ORDER BY vendor_count DESC;
