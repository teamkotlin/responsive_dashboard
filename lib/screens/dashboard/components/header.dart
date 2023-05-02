import 'package:admin_dashboard/constants.dart';
import 'package:admin_dashboard/controllers/MenuAppController.dart';
import 'package:admin_dashboard/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
              onPressed: context.read<MenuAppController>().controlMenu,
              icon: const Icon(Icons.menu)),
        if (Responsive.isDesktop(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context)) const Spacer(),
        const Expanded(child: SearchField()),
        const ProfileSection()
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          filled: true,
          fillColor: secondaryColor,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          suffixIcon: Container(
            padding: const EdgeInsets.symmetric(
                vertical: defaultPadding / 2, horizontal: defaultPadding),
            margin: const EdgeInsets.only(right: defaultPadding / 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: primaryColor),
            child: SvgPicture.asset(
              "assets/icons/Search.svg",
              height: 15,
            ),
          )),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding / 2),
      margin: const EdgeInsets.only(left: defaultPadding / 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white10),
          color: bgColor),
      child: Row(
        children: [
          Image.asset(
            "assets/images/profile_pic.png",
            height: 35,
          ),
          if (!Responsive.isMobile(context))
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding / 2),
              child: Text("Angelina Joli"),
            ),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}
