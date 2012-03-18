#!/usr/bin/env python
# encoding: utf-8
"""
untitled.py

Created by Joe Hand on 2012-03-17.
Copyright (c) 2012 __MyCompanyName__. All rights reserved.
"""

import urllib
from BeautifulSoup import BeautifulSoup

f = open('wunder-data.txt', 'w')

# Loading the WUnderground URL

for m in range(7, 13):
	for d in range(1, 32):
		if (m == 2 and d > 28):
			break
		elif (m in [4,6,9,11] and d > 30):
			break
			
		timestamp = '2009' + str(m) + str(d)
		print 'Getting data for ' + timestamp
		url = 'http://www.wunderground.com/history/airport/KBUF/2009/' + str(m) + '/' + str(d) + '/DailyHistory.html'
		page = urllib.urlopen(url)

		# using beautiful soup to parse page

		soup = BeautifulSoup(page)

		# finding all spans with class (temp spans)

		dayTemp = soup.findAll(attrs={"class":"nobr"})[5].span.string


		if len(str(m)) < 2:
			mStamp = '0' + str(m)
		else: 
			mStamp = str(m)

		if len(str(d)) < 2:
			dStamp = '0' + str(d)
		else:
			dStamp = str(d)
			
		timestamp = '2009' + mStamp + dStamp


		f.write(timestamp + ',' + dayTemp + '\n')
		
f.close()