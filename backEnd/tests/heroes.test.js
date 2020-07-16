const chai = require('chai');
const chaiHttp = require('chai-http');

const should = chai.should();
chai.use(chaiHttp)

describe('/GET all heroes', () => {
  it('it should Get all heroes', (done) => {
    chai
      .request("localhost:3000")
      .get('/api/heroes/1')
      .end((err, res) => {
        res.should.have.status(200);
        res.should.be.json;
        res.body.should.be.a("array");

        done();
      });
  });
});


describe('/GET hero dy id', () => {
  it('it should Get hero', (done) => {
    chai
      .request("localhost:3000")
      .get('/api/heroes/1')
      .end((err, res) => {
        res.should.have.status(200);
        res.should.be.json;
        res.body.should.be.a("array");
        res.body[0].should.have.property("id");
        res.body[0].should.have.property("powerstats");

        done();
      });
  });
});
