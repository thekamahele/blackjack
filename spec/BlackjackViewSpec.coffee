expect = chai.expect
assert = chai.assert
should = chai.should()

describe "Hand tests", ->
  deck = null
  playerHand = null
  dealerHand = null

  beforeEach ->
    deck = new Deck()
    playerHand = deck.dealPlayer()
    dealerHand = deck.dealDealer()

  it "should have a hit, hasAce, and minScore methods", ->
    expect(playerHand.hit).to.be.a('function')
    assert.isFunction(playerHand.hasAce)
    playerHand.minScore.should.be.a('function')

  it "playerHand should be an instanceof Hand", ->
    expect(playerHand).to.be.an.instanceOf(Hand)

  it "should have four cards after hitting", ->
    playerHand.hit()
    playerHand.hit()
    assert.strictEqual playerHand.length, 4

  it "should return false for hasAce", ->
    playerHand.add(new Card rank: 5, suit: 3)
    playerHand.hasAce().should.equal(false)

  it "should return true for hasAce", ->
    playerHand.add(new Card rank: 1, suit: 3)
    expect(playerHand.hasAce()).to.equal(true)
    assert.isTrue(playerHand.hasAce())