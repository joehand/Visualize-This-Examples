#!/usr/bin/env python
# encoding: utf-8
"""
csv_xml.py

Created by Joe Hand on 2012-03-17.
"""

import csv
f = open('wunder-data.json', 'w')

reader = csv.reader(open('wunder-data.txt', 'r'), delimiter = ',')

f.write('{ observations: [\n')

rows_so_far = 0

for row in reader:
	
	rows_so_far += 1

 	observation = '\t{\n'
	observation += '\t"date": ' + '"' + row[0] + '", \n'
	observation += '\t"temperature": ' + '"' + row[1] + '", \n'
	
	if int(row[1]) <= 32:
		is_freezing = '1'
	else:
		is_freezing = '0'
	
	observation += '\t"freezing": ' + '"' + is_freezing + '", \n'
	
	f.write(observation)
	if rows_so_far < 365:
		
		f.write('\t },\n')
	else:
		
		f.write('\t }\n')
	
	

f.write('] }')
	
f.close()