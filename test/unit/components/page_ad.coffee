should = require('clay-chai').should()

PageAd = require 'components/page_ad'

describe 'page ad', ->
  it 'renders iframe', ->
    ad = new PageAd(gameId: '1')
    dom = ad.render()
    dom.tag.should.be 'div'
    dom.children[0].attrs.className.should.be 'c-page-ad-close'
    dom.children[1].attrs.className.should.be 'c-page-ad-full-portrait'
