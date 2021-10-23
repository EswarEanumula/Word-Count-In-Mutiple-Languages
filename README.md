1. Create a text file containing a paragraph i.e a.txt

2. Open terminal

3. hadoop fs -mkdir /abc

4. hadoop fs -put /home/mangal/Desktop/a.txt /abc

5. Open bashrc file by gedit ~/.bashrc and type
	
	export HADOOP_CLASSPATH=$JAVA_HOME/lib/tools.jar

6. Then source ~/.bashrc

7. cd Desktop

8. Now compile Wordcount.java file suppose that file is on Desktop

	hadoop com.sun.tools.javac.Main WordCount.java

9. To combine all class files 
	
	jar cf wc.jar WordCount*.class

10. To execute
	
	hadoop jar wc.jar WordCount /abc/a.txt /output

11. hadoop fs -ls /			//// to check output folder is there or not

12. hadoop fs -cat /output/part-r-00000

