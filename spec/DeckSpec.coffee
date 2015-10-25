assert = chai.assert
expect = chai.expect

describe 'deck', ->
  deck = null
  hand = null

  beforeEach ->
    deck = new Deck()
    hand = deck.dealPlayer()

  describe 'hit', ->
    it 'should give the last card from the deck', ->
      assert.strictEqual deck.length, 50
      assert.strictEqual deck.last(), hand.hit()
      assert.strictEqual deck.length, 49

  describe 'deck', ->
    it 'should have a dealPlayer method', ->
      assert.isFunction deck.dealPlayer
    it 'should not have a redeal method', ->
      assert.isNotFunction deck.redeal
    it 'should have a model', ->
      expect(deck).to.have.property('model')
