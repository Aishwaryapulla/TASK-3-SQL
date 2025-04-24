📁𝐎𝐯𝐞𝐫𝐯𝐢𝐞𝐰

I worked with an E-Commerce transactional dataset that includes tables like fact_table, item_dim, store_dim, time_dim, and more. Using MySQL, I explored sales performance, product insights, and store activity through structured SQL queries—perfect for data analysis and reporting. 💼📊

🧾 𝐒𝐐𝐋 𝐓𝐚𝐬𝐤 𝐒𝐮𝐦𝐦𝐚𝐫𝐲
1. 🔍 𝐁𝐚𝐬𝐢𝐜 𝐅𝐢𝐥𝐭𝐞𝐫𝐢𝐧𝐠 & 𝐒𝐨𝐫𝐭𝐢𝐧𝐠
✔️ Used WHERE to get transactions with total_price > 100
➡️ Focused on high-value purchases
2. 📊 𝐆𝐑𝐎𝐔𝐏 𝐁𝐘 𝐰𝐢𝐭𝐡 𝐀𝐠𝐠𝐫𝐞𝐠𝐚𝐭𝐢𝐨𝐧
✔️ Summed sales by item_key
💡 WHERE can narrow down to a specific time, category, or region
3. 🔗𝐈𝐍𝐍𝐄𝐑 𝐉𝐎𝐈𝐍 (𝐅𝐚𝐜𝐭 + 𝐈𝐭𝐞𝐦)
✔️ Joined items with transaction details
💡 Add WHERE to filter by item type or date
4. 🏬 𝐋𝐄𝐅𝐓 𝐉𝐎𝐈𝐍 (𝐅𝐚𝐜𝐭 + 𝐒𝐭𝐨𝐫𝐞)
✔️ Combined sales with store info
💡 Use WHERE to limit to specific locations
5. 📉 𝐒𝐮𝐛𝐪𝐮𝐞𝐫𝐲 𝐰𝐢𝐭𝐡 𝐇𝐀𝐕𝐈𝐍𝐆
✔️ Found items with avg price above overall
💡 Use WHERE before grouping to clean/filter data
6. 🗓️ 𝐕𝐢𝐞𝐰 𝐂𝐫𝐞𝐚𝐭𝐢𝐨𝐧 (𝐌𝐨𝐧𝐭𝐡𝐥𝐲 𝐒𝐚𝐥𝐞𝐬)
✔️ Created a view of monthly item sales
💡 Add WHERE inside the view for year/category filters
7. 🚀𝐈𝐧𝐝𝐞𝐱 𝐎𝐩𝐭𝐢𝐦𝐢𝐳𝐚𝐭𝐢𝐨𝐧
✔️ Created indexes on item_key & store_key
⚡ Boosts speed of WHERE-based queries
This setup builds a solid foundation for data storytelling, reporting, and performance tuning. 
