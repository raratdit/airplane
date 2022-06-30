part of "widgets.dart";

class CustomButNavItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  final bool isSelected;
  const CustomButNavItem(
      {Key? key,
      required this.imageUrl,
      required this.index,
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imageUrl))),
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
                color: isSelected ? kPrimaryColor : kTransparentColor,
                borderRadius: BorderRadius.circular(18)),
          )
        ],
      ),
    );
  }
}
