import '../../core/errors/failure.dart';
import '../entitites.dart/movie_entity.dart';
import '../repositories/movie_repository.dart';
import 'usecase.dart';
import 'package:dartz/dartz.dart';

class SearchMoviesUsecase implements UseCase<MovieEntity, String> {
  final IMovieRepository repository;

  SearchMoviesUsecase(this.repository);

  @override
  Future<Either<Failure, List<MovieEntity>>> call(String searchText) async {
    
    return await repository.getSearchedMovies(searchText);
  }
}
