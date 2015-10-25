// Generated by CoffeeScript 1.10.0
var assert, expect;

assert = chai.assert;

expect = chai.expect;

describe('deck', function() {
  var deck, hand;
  deck = null;
  hand = null;
  beforeEach(function() {
    deck = new Deck();
    return hand = deck.dealPlayer();
  });
  describe('hit', function() {
    return it('should give the last card from the deck', function() {
      assert.strictEqual(deck.length, 50);
      assert.strictEqual(deck.last(), hand.hit());
      return assert.strictEqual(deck.length, 49);
    });
  });
  return describe('deck', function() {
    it('should have a dealPlayer method', function() {
      return assert.isFunction(deck.dealPlayer);
    });
    it('should not have a redeal method', function() {
      return assert.isNotFunction(deck.redeal);
    });
    return it('should have a model', function() {
      return expect(deck).to.have.property('model');
    });
  });
});