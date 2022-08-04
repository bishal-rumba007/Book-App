final bookData = [
  {
    'title': 'We are Inevitable',
    'rating': '⭐⭐⭐⭐⭐',
    'overView': '\"We are Inevitable\"All of them will help Aaron to come to terms with what he\'s lost, what he\'s found, who he is, and who he wants to be, and show him that destruction doesn\'t inevitably lead to extinction; sometimes it leads to the creation of something entirely new'
        'and show him that destruction doesn\'t inevitably lead to extinction; sometimes it leads to the creation of something entirely new',
    'imageUrl': 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1610748064l/55664091.jpg',
    'genreType': 'Adult Fiction'
  },
  {
    'title': 'Very Nice',
    'rating': '⭐⭐⭐⭐',
    'overView': '\"Very Nice\" Rachel Klein never meant to kiss her creative writing professor, but with his long eyelashes, his silky hair, and the sad, beautiful life he laid bare on Twitter, she does, and the kiss is very nice.'
        'his long eyelashes, his silky hair, and the sad, beautiful life he laid bare on Twitter, she does, and the kiss is very nice.',
    'imageUrl': 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1549910691l/42379031._SX318_.jpg',
    'genreType': 'Dark Comedy'
  },
  {
    'title': 'The Chronicles of Narnia',
    'rating': '⭐⭐⭐⭐⭐',
    'overView': '\"The Chronicles of Narnia\" is about four children whose names were Ann, Martin, Rose and Peter. But it is '
        'most about Peter who was the youngest. whose names were Ann, Martin, Rose and Peter. But it is '
        'most about Peter who was the youngest.this effort at prediction is dedicated in humility and admiration this effort at prediction is dedicated in humility and admiration ',
    'imageUrl': 'https://upload.wikimedia.org/wikipedia/en/c/cb/The_Chronicles_of_Narnia_box_set_cover.jpg',
    'genreType': 'Fantasy'
  },

  {
    'title': 'Dune',
    'rating': '⭐⭐⭐⭐⭐',
    'overView': '\"Dune\" Herbert dedicated his work to the people whose labors go beyond ideas into the realm of '
        'real materials to the dry-land ecologists, wherever they may be, in whatever time they work, '
        'this effort at prediction is dedicated in humility and admiration this effort at prediction is dedicated in humility and admiration'
        'this effort at prediction is dedicated in humility and admiration',
    'imageUrl': 'https://upload.wikimedia.org/wikipedia/en/d/de/Dune-Frank_Herbert_%281965%29_First_edition.jpg',
    'genreType': 'Science Fiction',
  },
];

List<Book> books = bookData.map((e) => Book.fromJson(e)).toList();

class Book {

  final String imageUrl;
  final String title;
  final String overView;
  final String rating;
  final String genreType;


  Book({
    required this.title,
    required this.rating,
    required this.overView,
    required this.imageUrl,
    required this.genreType
  });

  factory Book.fromJson(Map<String, dynamic> json){
    return Book(
      imageUrl: json['imageUrl'],
      title: json['title'],
      genreType: json['genreType'],
      overView: json['overView'],
      rating: json['rating'],
    );
  }

}
