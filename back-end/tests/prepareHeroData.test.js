const {expect} = require("chai");
const prepareHeroData = require("../app/helpers/prepareHeroData").prepareHeroData;

describe('prepare hero data', function () {
  it('return Hero Data', function () {
    const request = {
      id: 1,
      intelligence: 38,
      strength: 100,
      speed: 17,
      durability: 80,
      power: 24,
      combat: 64,
      img: 'https://www.superherodb.com/pictures2/portraits/10/100/10060.jpg',
      biography: '',
    };

    const response = {
      id: 1,
      img: 'https://www.superherodb.com/pictures2/portraits/10/100/10060.jpg',
      biography: '',
      powerstats: { intelligence: 38, strength: 100, speed: 17, durability: 80, power: 24, combat: 64 }
    };

    expect(prepareHeroData([request])).to.deep.include(response);
  });
})
