import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../favorite_screen/presentation/widgets/favorite_appbar.dart';

class AddComments extends StatefulWidget {
  const AddComments({super.key});

  @override
  State<AddComments> createState() => _AddCommentsState();
}

class _AddCommentsState extends State<AddComments> {
  final TextEditingController comment = TextEditingController();
  String review = '';
  double rating = 0;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FavoriteAppBar(
        title: "Add comment",
        // icon: SvgPicture.asset(Images.trushIcon,) as Icon,
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30.0),
              RatingBar.builder(
                initialRating: rating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  setState(() {
                    this.rating = rating;
                  });
                },
              ),
              const SizedBox(height: 100.0),
              SizedBox(
                height: 100,
                child: TextFormField(
                  controller: comment,
                  maxLines: 4, // This controls the height of the field
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "add comment",
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      review = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 100.0),
              Container(
                height: 70,
                width: 276,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Center(
                    child: isLoading
                        ?const CircularProgressIndicator(color: Colors.white,)
                        :Text("send", style: const TextStyle(fontSize: 18), // Assuming fontLarge is defined elsewhere
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
