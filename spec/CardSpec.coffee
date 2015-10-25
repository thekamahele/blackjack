assert = chai.assert
expect = chai.expect

describe "deck constructor", ->

  it "should create a card collection", ->
    collection = new Deck()
    assert.strictEqual collection.length, 52

describe "card constructor", ->
  card = null

  beforeEach -> 
    card = new Card({rank: 5, suit: 2})

  it "should have a rank", ->
    expect(card.attributes).to.have.property('rank')

  it "should have a value of 5", ->
    expect(card.attributes.rank).to.equal(5)

  it "should have a flip method", ->
    expect(card.flip).to.be.an('function')