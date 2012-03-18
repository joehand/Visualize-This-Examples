#!/usr/bin/env python
# encoding: utf-8
"""
xml_csv.py

Created by Joe Hand on 2012-03-17.
"""

from BeautifulSoup import BeautifulStoneSoup
f = open('wunder-data.xml', 'r')

xml = f.read()

soup = BeautifulStoneSoup(xml)
observations = soup.findAll('observation')
for o in observations:
	print o.date.string + ',' + o.max_temperature.string
	
