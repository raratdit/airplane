part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
          margin: EdgeInsets.only(
              left: defaultMargin, top: 30, right: defaultMargin),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hay, \nRadit",
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Hohohoho",
                      style: greyTextStyle.copyWith(
                          fontSize: 16, fontWeight: light),
                    ),
                  ],
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/image_profile.png'))),
              )
            ],
          ));
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: "Lake Ciliwung",
                city: "Tanggerang",
                imageUrl: 'assets/image_destination1.png',
                rating: 8,
              ),
              DestinationCard(
                name: "Lake Ciliwung",
                city: "Tanggerang",
                imageUrl: 'assets/image_destination2.png',
                rating: 2,
              ),
              DestinationCard(
                name: "Lake Ciliwung",
                city: "Tanggerang",
                imageUrl: 'assets/image_destination3.png',
                rating: 6,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New This Year",
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            DestinationTile(
              name: "yuhu",
              city: "tangsel",
              imageUrl: 'assets/image_destination6.png',
            ),
            DestinationTile(
              name: "yuhu",
              city: "tangsel",
              imageUrl: 'assets/image_destination6.png',
            ),
            DestinationTile(
              name: "yuhu",
              city: "tangsel",
              imageUrl: 'assets/image_destination6.png',
            ),
            DestinationTile(
              name: "yuhu",
              city: "tangsel",
              imageUrl: 'assets/image_destination6.png',
            ),
            DestinationTile(
              name: "yuhu",
              city: "tangsel",
              imageUrl: 'assets/image_destination6.png',
            ),
            Container(
              height: 100,
            )
          ],
        ),
      );
    }

    return ListView(
      children: [header(), popularDestinations(), newDestination()],
    );
  }
}
