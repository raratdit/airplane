part of 'pages.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image_get_started.png'),
                      fit: BoxFit.cover))),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Fly Like a Bird",
                  style: whiteTextStyle.copyWith(
                      fontSize: 32, fontWeight: semiBold),
                ),
                Text(
                  "bleh bleh bleh",
                  style:
                      whiteTextStyle.copyWith(fontSize: 20, fontWeight: medium),
                ),
                CustomButton(
                    title: " Cus Gan",
                    width: 220,
                    margin: EdgeInsets.only(bottom: 80, top: 50),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
