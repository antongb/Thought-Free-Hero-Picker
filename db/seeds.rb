# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Role.all.length != 4
  Role.create!(role: "dps")
  Role.create!(role: "tank")
  Role.create!(role: "support")
  Role.create!(role: "none")
end

roles_hash = {
  "Abathur" => 3,
  "Anub\'arak" => 2,
  "Arthas" => 2,
  "Azmodan" => 1,
  "Brightwing" => 3,
  "Chen" => 2,
  "Diablo" => 2,
  "E.T.C." => 2,
  "Falstad" => 1,
  "Gazlowe" => 1,
  "Illidan" => 1,
  "Jaina" => 1,
  "Johanna" => 2,
  "Kael\'thas" => 1,
  "Kerrigan" => 1,
  "Leoric" => 2,
  "Li Li" => 3,
  "Malfurion" => 3,
  "Muradin" => 2,
  "Murky" => 1,
  "Nazeebo" => 1,
  "Nova" => 1,
  "Raynor" => 1,
  "Rehgar" => 3,
  "Sgt. Hammer" => 1,
  "Sonya" => 2,
  "Stitches" => 2,
  "Sylvanas" => 1,
  "Tassadar" => 3,
  "The Butcher" => 1,
  "The Lost Vikings" => 1,
  "Thrall" => 1,
  "Tychus" => 1,
  "Tyrael" => 2,
  "Tyrande" => 3,
  "Uther" => 3,
  "Valla" => 1,
  "Zagara" => 1,
  "Zeratul" => 1
}

roles_hash.each do |hero_name, role|
  Hero.find_by_name(hero_name).update_attribute(:role_id, role)
end
