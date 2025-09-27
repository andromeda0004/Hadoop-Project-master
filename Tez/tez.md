𝐓𝐄𝐙 𝐎𝐕𝐄𝐑𝐕𝐈𝐄𝐖:

Apache Tez is an application framework built on Hadoop YARN that allows for a complex directed-acyclic-graph of tasks for processing data. Tez improves the performance of big data applications by enabling complex query execution in a more efficient manner compared to traditional MapReduce.

𝐂𝐨𝐧𝐟𝐢𝐠𝐮𝐫𝐞 𝐇𝐢𝐯𝐞 𝐭𝐨 𝐔𝐬𝐞 𝐓𝐞𝐳:

<property>
    <name>hive.execution.engine</name>
    <value>tez</value>
</property>
<property>
    <name>tez.lib.uris</name>
    <value>${fs.defaultFS}/apps/tez-0.9.2/tez.tar.gz</value>
</property>


 𝐑𝐮𝐧 𝐚 𝐒𝐚𝐦𝐩𝐥𝐞 𝐇𝐢𝐯𝐞 𝐐𝐮𝐞𝐫𝐲 𝐔𝐬𝐢𝐧𝐠 𝐓𝐞𝐳:

𝟏. 𝐎𝐩𝐞𝐧 𝐇𝐢𝐯𝐞 𝐒𝐡𝐞𝐥𝐥: 𝐀𝐜𝐜𝐞𝐬𝐬 𝐭𝐡𝐞 𝐇𝐢𝐯𝐞 𝐬𝐡𝐞𝐥𝐥 𝐟𝐫𝐨𝐦 𝐲𝐨𝐮𝐫 𝐭𝐞𝐫𝐦𝐢𝐧𝐚𝐥.
	hive

𝟐. 𝐂𝐫𝐞𝐚𝐭𝐞 𝐚𝐧𝐝 𝐋𝐨𝐚𝐝 𝐓𝐚𝐛𝐥𝐞:
	CREATE TABLE movies (
    		movie_id INT,
    		title STRING,
    		genre STRING
	)
	ROW FORMAT DELIMITED
	FIELDS TERMINATED BY ','
	STORED AS TEXTFILE;

	LOAD DATA INPATH '/path/to/movies.csv' INTO TABLE movies;

	SELECT * FROM movies;

𝟑. 𝐏𝐞𝐫𝐟𝐨𝐫𝐦𝐚𝐧𝐜𝐞 𝐃𝐢𝐟𝐟𝐞𝐫𝐞𝐧𝐜𝐞𝐬:

1. Tez vs. MapReduce: Tez provides a more flexible and efficient execution framework compared to traditional MapReduce. It enables complex DAGs of tasks, reducing the need for multiple stages and intermediate writes, leading to significant performance improvements.

2. Tez vs. Spark: While both Tez and Spark offer DAG-based execution, Spark tends to be faster for iterative algorithms and in-memory processing. Tez, however, is often more efficient for single-pass, batch-oriented jobs, especially when integrated with Hive.

3. Tez vs. Pig: Pig scripts can also benefit from Tez as the execution engine, leading to better performance. However, Pig is more abstract and high-level compared to direct Tez API usage.

4. Tez vs. Hive: Hive with Tez as the execution engine performs better than Hive on MapReduce, offering lower latency and better resource utilization for SQL-like queries.

𝟒. 𝐂𝐨𝐧𝐜𝐥𝐮𝐬𝐢𝐨𝐧:

Adding Tez to your project enhances the performance of your data processing tasks, making your Hadoop environment more efficient and flexible.
	
