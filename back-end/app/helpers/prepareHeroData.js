exports.prepareHeroData = (data) => {
  const newData = [];

  data.forEach(d => {
    const {id, intelligence, strength, speed, durability, power, combat, img, biography } = d;
    const hero = {
      id, img, biography,
      powerstats: { intelligence, strength, speed, durability, power, combat },
    };

    newData.push(hero);
  });

  return [...newData];
};
