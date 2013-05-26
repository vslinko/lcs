expect = require("chai").expect
lcs = require ".."


describe "lcs()", ->
  it "should return the longest common substring", ->
    sequence = lcs "longest common substring", "common"
    expect(sequence).to.equal "common"
