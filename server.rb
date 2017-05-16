require "sinatra"
require "json"

bars = [
  {
    "id": 1,
    "name": "Paddy's Pub",
    "address": "Somewhere in Philadelphia",
    "cover_charge": nil,
    "hours_of_operation": "whenever Charlie turns on the 'coors' light",
    "created_at": "2017-02-01T21:35:24.764Z",
    "updated_at": "2017-02-01T21:35:24.764Z",
    "reviews": [
      {
        "id": 1,
        "rating": 1,
        "body": "+1 fashion axe master pitchfork food truck. Bitters biodiesel plaid try-hard bespoke green juice raw denim craft beer."
      },
      {
        "id": 2,
        "rating": 2,
        "body": "Iphone cray swag tote bag paleo schlitz. Drinking food truck etsy try-hard farm-to-table. Paleo chicharrones hoodie."
      },
      {
        "id": 3,
        "rating": 4,
        "body": "Kogi 8-bit you probably haven't heard of them helvetica meditation farm-to-table. Forage fixie mumblecore everyday craft beer. Scenester brunch bespoke leggings deep v irony 8-bit park."
      }
    ]
  },
  {
    "id": 2,
    "name": "Suds",
    "address": "Also Philly",
    "cover_charge": nil,
    "hours_of_operation": "4:00PM - 2:00AM",
    "created_at": "2017-02-01T21:35:24.768Z",
    "updated_at": "2017-02-01T21:35:24.768Z",
    "reviews": [
      {
        "id": 4,
        "rating": 4,
        "body": "Listicle artisan celiac tattooed lumbersexual. Selvage cred post-ironic. Stumptown franzen ethical park gluten-free."
      },
      {
        "id": 5,
        "rating": 4,
        "body": "Asymmetrical pop-up migas humblebrag ugh. Quinoa cray bushwick wayfarers sustainable. Messenger bag gastropub pop-up mlkshk readymade."
      },
      {
        "id": 6,
        "rating": 1,
        "body": "Typewriter vegan shabby chic tousled narwhal occupy cray. Pinterest pbr&b cleanse artisan direct trade kickstarter. Salvia xoxo vegan marfa yuccie health irony mustache."
      }
    ]
  },
  {
    "id": 3,
    "name": "Phoenix Landing",
    "address": "Central Square",
    "cover_charge": "10 bucks after 10pm",
    "hours_of_operation": "11:00AM - 1:00AM",
    "created_at": "2017-02-01T21:35:24.771Z",
    "updated_at": "2017-02-01T21:35:24.771Z",
    "reviews": [
      {
        "id": 7,
        "rating": 1,
        "body": "Cornhole godard humblebrag crucifix microdosing next level. Pickled whatever farm-to-table chambray irony banh mi."
      },
      {
        "id": 8,
        "rating": 1,
        "body": "Meh viral marfa. Leggings trust fund ennui synth biodiesel sustainable. Cray goth single-origin coffee viral cred put a bird on it fap brunch. Five dollar toast neutra dreamcatcher sartorial."
      },
      {
        "id": 9,
        "rating": 3,
        "body": "Sustainable vhs vinyl seitan. Hoodie helvetica 3 wolf moon swag before they sold out freegan sriracha. Migas everyday butcher cardigan kogi lumbersexual authentic roof."
      }
    ]
  },
  {
    "id": 4,
    "name": "Backbar",
    "address": "union square discreet alley",
    "cover_charge": "none",
    "hours_of_operation": "11:00AM - 1:00AM",
    "created_at": "2017-02-01T21:35:24.774Z",
    "updated_at": "2017-02-01T21:35:24.774Z",
    "reviews": [
      {
        "id": 10,
        "rating": 1,
        "body": "Cardigan ramps pug. Retro actually authentic lumbersexual. Chambray 8-bit thundercats direct trade ennui typewriter. Knausgaard kickstarter vinegar pabst kitsch."
      },
      {
        "id": 11,
        "rating": 3,
        "body": "Farm-to-table meh offal pork belly disrupt readymade helvetica normcore. Chia whatever plaid helvetica keytar ramps everyday messenger bag."
      },
      {
        "id": 12,
        "rating": 1,
        "body": "Ennui hashtag kale chips skateboard wolf swag. Pabst loko etsy diy jean shorts brunch ennui."
      }
    ]
  }
]


get "/api/v1/bars" do
  bars.to_json
end

get "/api/v1/bars/:id" do |id|
  bars.find { |bar| bar[:id] == id.to_i }.to_json
end

get '*' do
  puts "*"
  send_file File.expand_path('index.html', settings.public_folder)
end
