#!/usr/bin/env python
# encoding: utf-8
"""
csv_xml.py

Created by Joe Hand on 2012-03-17.
"""

import csv
f = open('wunder-data-xml.xml', 'w')


reader = csv.reader(open('wunder-data.txt', 'r'), delimiter = ',')

f.write('<weather_data>\n')

for row in reader:
 	observation = '<observation>\n'
	observation += '	<date>' + row[0] + '</date>\n'
	observation += '	<max_temperature' + row[1] + '</max_temperature>\n'
	observation += '</observation>\n'
	
	f.write(observation)
	

f.write('</weather_data>')
	
f.close()