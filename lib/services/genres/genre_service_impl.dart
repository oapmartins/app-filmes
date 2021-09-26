import 'package:app_filmes/models/genre_model.dart';
import 'package:app_filmes/repositories/genres/genres_repository.dart';
import 'package:app_filmes/services/genres/genres_service.dart';

class GenreServiceImpl implements GenresService {
  final GenresRepository _genresRepository;

  GenreServiceImpl({
    required GenresRepository genresRepository,
  }) : _genresRepository = genresRepository;

  @override
  Future<List<GenreModel>> getGenres() => _genresRepository.getGenres();
}
