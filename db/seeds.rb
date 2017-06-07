organization_seeds = [
  {name: "First Presbyterian Church of Brooklyn", description: "Congregation of different races, ethnicities, nationalities, ages, sexual orientations, marital statuses, professions, incomes and abilities that reflect and honor that diversity.", locations: [{name: "Main", address: "124 Henry Street", city: "Brooklyn", state:"NY", zipcode: "11201"}]},
  {name: "First Unitarian Church in Brooklyn Gay-Straight Alliance", description: "Inclusion/expressions/advocacy of LGBT concerns in congregational life and society.", locations: [{name: "Main", address: "50 Monroe Place", city: "Brooklyn", state:"NY", zipcode: "11201"}, {name: "Manhattan Branch", address: "1201 Broadway", city: "New York", state:"NY", zipcode: "10001"}]},
  {name: "Broadway United Church of Christ", description: "LGBT-affirming congregation of United Church of Christ, 5pm Sunday worship service, followed by dinner. All welcome.",locations: [{name: "Office", address: "124 Goss Street", city: "New York", state:"NY", zipcode: "10001"}]},
  {name: "Callen-Lorde Community Health Center", description: "Services targeted at New York’s LGBT communities, including: case management, primary medical care, HIV testing, health, Health Outreach to Teens (HOTT) program ages: 13-24. Free sexual and reproductive health services including: condoms, birth control, emergency contraception, STD testing and treatment, HIV testing, pregnancy testing, and mental health counseling.", locations: [{address: "356 W. 18th St., 2nd floor", city: "New York", state:"NY", zipcode: "10011"}]},
  {name: "Congregation Beit Simchat Torah", description: "Synagogue serving LGBTQ community of NYC since 1973. Has an active Trans Empowerment Committee.", locations: [{address: "57 Bethune St.", city: "New York", state:"NY", zipcode: "10014"}]},
  {name: "Greenwich Village Youth Council's Neutral Zone", description: "Safe space for LGBTQ youth to drop in and hang out, socialize, enjoy activities. Also homeless or at-risk services.\r\n", locations: [{address: "2273 Third Avenue", city: "New York", state:"NY", zipcode: "10035"}]},
  {name: "HIV Law Project", description: "Services for HIV+ Bronx and Manhattan residents, including: housing, immigration, benefits, and healthcare. Bilingual English/Spanish.", locations: [{address: "15 Maiden Lane, 18th floor", city: "New York", state:"NY", zipcode: "10038"}]},
  {name: "Jan Hus Presbyterian Church", description: "LGBT-affirming congregation and homeless outreach program.", locations: [{address: "351 East 74th street", city: "New York", state:"NY", zipcode: "10021"}]},
  {name: "Lawyers for Children", description: "The LGBTQ Youth Project specializes in referrals and legal representation for LGBTQ young people in foster care.", locations: [{address: "110 Lafayette Street", city: "New York", state:"NY", zipcode: "10013"}]},
  {name: "Lennox Avenue Health Center", description: "Services for females only. Low cost sexual and reproductive health services including: condoms, birth control, emergency contraception, STD testing and treatment, HIV testing, and pregnancy testing", locations: [{address: "115 West 116th Street", city: "New York", state:"NY", zipcode: "10026"}]},
  {name: "LGBT Law Association of Greater New York", description: "Services include: a resource center, lawyer assistance program, LGBT life planning, legal walk-in clinics on Long Island and in Manhattan, the West Village Trans-Legal Clinic", locations: [{address: "799 Broadway, #340", city: "New York", state:"NY", zipcode: "10003"}]},
  {name: "New Alternatives", description: "Services for LGBT homeless youth ages 16-24, including: case management, life skills workshops, community building, educational and discussion groups, support groups, hot meals, food pantry, clothing, and toiletries. Walk-in Sundays 6-8 pm and Tuesdays 5-9 pm.", locations: [{address: "83 Christopher Street", city: "New York", state:"NY", zipcode: "10014"}]},
  {name: "Project SOL (Speak Out Loud)", description: "Project SOL is specifically designed for L.G.B.T.Q. youth, young adults and their allies based in the Lower East Side.", locations: [{address: "80 Pitt Street Community Center", city: "New York", state:"NY", zipcode: "10002"}]},
  {name: "Seventh Day Adventist Kinship - NY Chapter", description: "Lesbian and gay religious support group for present and former Seventh Day Adventists and friends.", locations: [{name: "Main", address: "95 W 95th St, #21F", city: "New York", state:"NY", zipcode: "10025"}, {name: "Satellite", address: "95 W 110th St", city: "New York", state:"NY", zipcode: "10025"}]},
  {name: "Trinity Place", description: "Services for young adults ages 18- 24, including: a 10 bed transitional shelter, case management, money for transportation, food, etc. and partner with other organizations that offer medical and mental health services.", locations: [{name: "Main", address: "164 W. 100th St.", city: "New York", state:"NY", zipcode: "10025"}]},
  {name: "The Neuroscience Institute", description: "Non-profit outpatient neurological clinic offeringadults (19+) diagnosis and treatment for neurological disorders, including developmental disabilities, epilepsy, stroke, multiple sclerosis, memory disorders, neuro-oncology, autonomic disorders, and sleep disorders.", locations: [{name: "Main", address: "59-16 174th Street", city: "Fresh Meadows", state:"NY", zipcode: "11365"}]},
  {name: "Family PEACE Program", description: "Public program providing women and their children (ages 0-13) who have experienced domestic violence in their home with bilingual (English/Spanish) mental health services.", locations: [{name: "Main", address: "534 West 135th Street", city: "New York", state:"NY", zipcode: "10031"}]},
  {name: "South Bronx Job Corps Academy", description: "Public program offeringindividuals ages 16-24 free job training and job placement in either a residential or commuter setting.", locations: [{name: "Main", address: "1771 Andrews Avenue", city: "Bronx", state:"NY", zipcode: "10453"}]},
  {name: "Queens Adult Learning Center (QALC)", description: "Public learning center providing individuals ages 21+ with free education courses, including basic education, GED, ESL, and computer applications classes.", locations: [{name: "Main", address: "27-35 Jackson Avenue, 3rd Floor", city: "Long Island City", state:"NY", zipcode: "11101"}]},
  {name: "Brooklyn Adult Learning Center (BALC)", description: "Public center offering individuals ages 21+ free day, evening, and Saturday courses, including basic education, TASC, ESL, computer literacy classes, A+ electronic, computer repair, technical education, licensed practical nursing, and certified nursing assistant programs,career education and medical billing and coding.", locations: [{name: "Main", address: "475 Nostrand Avenue", city: "Brooklyn", state:"NY", zipcode: "11216"}]}
]

organization_seeds.each do |org_seed|
  org = Organization.create(name: org_seed[:name], description: org_seed[:description])
  org_seed[:locations].each do |location_attrs|
    org.locations.create location_attrs
  end
end