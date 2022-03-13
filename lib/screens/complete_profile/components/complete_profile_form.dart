import 'package:complete_ecommerce/screens/otp/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileFrom extends StatefulWidget {
  const CompleteProfileFrom({Key? key}) : super(key: key);

  @override
  _CompleteProfileFromState createState() => _CompleteProfileFromState();
}

class _CompleteProfileFromState extends State<CompleteProfileFrom> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String address;

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
        child: Column(
          children: [
            buildFirstNameFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildLastNameFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildPhoneNumberFormFeild(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildAddressFormField(),
            FormError(errors: errors),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    //Go to OTP Screen.
                    Navigator.pushNamed(context, OtpScreen.routeName);
                  }
                })
          ],
        ),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: ((newValue) => address = newValue!),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          setState(() {
            errors.remove(kAddressNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kAddressNullError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: "Enter your first name",
        labelText: "Address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSuffixIcon(svgIcon: "assets/icons/Location point.svg"),
      ),
    );
  }

  TextFormField buildPhoneNumberFormFeild() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: ((newValue) => phoneNumber = newValue!),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.add(kPhoneNumberNullError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: "Enter your phone number",
        labelText: "Phone Number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: ((newValue) => lastName = newValue!),
      decoration: const InputDecoration(
        hintText: "Enter your last name",
        labelText: "Last Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: ((newValue) => firstName = newValue!),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNamelNullError)) {
          setState(() {
            errors.remove(kNamelNullError);
          });
        }
      },
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kNamelNullError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: "Enter your first name",
        labelText: "First Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
}
