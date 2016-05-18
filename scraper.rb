#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names_fo = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/faroes-logting-wikipedia', column: 'identifier__wikipedia_fo')

no = {}

no[1990] = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://no.wikipedia.org/wiki/Mal:Lagting_1990%E2%80%931994',
  xpath: '//table[@class="navbox"]//td[contains(@class,"navbox-list")]//a[not(@class="new")]/@title',
)

no[1994] = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://no.wikipedia.org/wiki/Mal:Lagting_1994%E2%80%931998',
  xpath: '//table[@class="navbox"]//td[contains(@class,"navbox-list")]//a[not(@class="new")]/@title',
)

no[1998] = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://no.wikipedia.org/wiki/Mal:Lagting_1998%E2%80%932002',
  xpath: '//table[@class="navbox"]//td[contains(@class,"navbox-list")]//a[not(@class="new")]/@title',
)

no[2002] = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://no.wikipedia.org/wiki/Mal:Lagting_2002%E2%80%932004',
  xpath: '//table[@class="navbox"]//td[contains(@class,"navbox-list")]//a[not(@class="new")]/@title',
)

no[2004] = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://no.wikipedia.org/wiki/Mal:Lagting_2004%E2%80%932008',
  xpath: '//table[@class="navbox"]//td[contains(@class,"navbox-list")]//a[not(@class="new")]/@title',
)

no[2008] = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://no.wikipedia.org/wiki/Mal:Lagting_2008%E2%80%932012',
  xpath: '//table[@class="navbox"]//td[contains(@class,"navbox-list")]//a[not(@class="new")]/@title',
)

no[2011] = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://no.wikipedia.org/wiki/Mal:Lagting_2011%E2%80%932015',
  xpath: '//table[@class="navbox"]//td[contains(@class,"navbox-list")]//a[not(@class="new")]/@title',
)

no[2015] = EveryPolitician::Wikidata.wikipedia_xpath(
  url: 'https://no.wikipedia.org/wiki/Mal:Lagting_2015%E2%80%932019',
  xpath: '//table[@class="navbox"]//td[contains(@class,"navbox-list")]//a[not(@class="new")]/@title',
)
 
EveryPolitician::Wikidata.scrape_wikidata(names: { fo: names_fo, no: no.values.inject(&:|), nb: [] }, output: false)

