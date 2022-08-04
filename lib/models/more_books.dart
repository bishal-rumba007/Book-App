final bookData = [
  {
    'title': 'Six of Crows',
    'rating': '⭐⭐⭐⭐',
    'overView': 'The crew safely reaches Ketterdam, with Nina already suffering from withdrawals. They leave her with Wylan, while the rest of the crew take Kuwei to Jan Van Eck. Van Eck, however, reveals that he only wanted the formula for jurda parem to profit from the fallout of its release to the world',
    'imageUrl': 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1651710803l/23437156.jpg',
    'genreType': 'Classic'
  },
  {
    'title': 'Time of Witches',
    'rating': '⭐⭐⭐⭐⭐',
    'overView': 'Orphaned at the age of four, Drucilla finally has a place she can call home with her new family, the Putnams, of Salem Village. But when a new reverend and his family move into town with their servant Tituba, life takes a strange and dangerous turn as accusations of witchcraft swirl.',
    'imageUrl': 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1536520861l/41749522._SY475_.jpg',
    'genreType': 'Anthology'
  },
  {
    'title': 'The infinite Future',
    'rating': '⭐⭐⭐⭐',
    'overView': 'An exhilarating, original novel, set in Brazil, Idaho, and outer space, about an obsessive librarian, a down-at-heel author, and a disgraced historian who go on the hunt for a mystical, life-changing book--and find it. ',
    'imageUrl': 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQZBWCcVkOl9p22Y4f9GuztDhBx9lPrB4zu6q1IzIdqnMfhskb2',
    'genreType': 'Mystery'
  },
  {
    'title': 'Dune',
    'rating': '⭐⭐⭐⭐⭐',
    'overView': 'Herbert dedicated his work "to the people whose labors go beyond ideas into the realm of '
        'real materials to the dry-land ecologists, wherever they may be, in whatever time they work, '
        'this effort at prediction is dedicated in humility and admiration',
    'imageUrl': 'https://upload.wikimedia.org/wikipedia/en/d/de/Dune-Frank_Herbert_%281965%29_First_edition.jpg',
    'genreType': 'Science Fiction',
  },
  {
    'title': 'The Chronicles of Narnia',
    'rating': '⭐⭐⭐⭐',
    'overView': 'This book is about four children whose names were Ann, Martin, Rose and Peter. But it is '
        'most about Peter who was the youngest. ',
    'imageUrl': 'https://upload.wikimedia.org/wikipedia/en/c/cb/The_Chronicles_of_Narnia_box_set_cover.jpg',
    'genreType': 'Fantasy'
  },

  {
    'title': 'Caraval',
    'rating': '⭐⭐⭐⭐⭐',
    'overView': 'Scarlett Dragna has never left the tiny island where she and her sister, Tella, live with their powerful, and cruel, father. Now Scarlett’s father has arranged a marriage for her, and Scarlett thinks her dreams of seeing Caraval—the faraway, once-a-year performance where the audience participates in the show—are over.',
    'imageUrl': 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1465563623l/27883214.jpg',
    'genreType': 'Modern',
  },
];

List<Book> moreBooks = bookData.map((e) => Book.fromJson(e)).toList();

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