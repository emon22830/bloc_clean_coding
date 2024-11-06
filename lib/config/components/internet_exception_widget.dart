import 'package:flutter/material.dart';

class InternetExceptionWidget extends StatelessWidget {
  final VoidCallback onPress;
  const InternetExceptionWidget({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery
              .sizeOf(context)
              .height * .15,
        ),
        Icon(
          Icons.cloud_off,
          color: Colors.red,
          size: 50,
        ),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Center(
            child: Text(
                'We are unable to show result.\nPlease check your data\nconnection.',
                textAlign: TextAlign.center,
                style: Theme
                    .of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 20)
            ),
          ),
        ),
        SizedBox(height: 30,),
        ElevatedButton(
            onPressed: onPress,
            child: Center(
              child: Text(
                'RETRY',
                style: Theme.of(context)
                  .textTheme
                  .bodySmall,
              ),
            )
        )
      ],
    );
  }
}
