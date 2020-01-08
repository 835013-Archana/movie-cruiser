package com.cognizant.movie.dao;

import java.util.List;
import com.cognizant.movie.model.Movie;

public class FavoriteDaoCollectionImplTest {
    static FavoriteDao favoriteDao = new FavoriteDaoCollectionImpl();

    public static void main(String[] args) {
        testAddFavoritesById();
        testGetAllFavorites();
        testRemoveFavorites();
        testGetAllFavorites();
    }

    public static void testAddFavoritesById() {
        System.out.println("Movies added into Favorite");
        favoriteDao.addFavoritesById(1, 3);
        favoriteDao.addFavoritesById(1, 4);
    }

    public static void testGetAllFavorites() {
        try {

            System.out.println("Retrieving all the Movies from favorite");
            System.out.printf("%-10s%-24s%-16s%-11s%-21s%-15s%s\n", "Id ", "Title", "Box Office",
                    "Active", "Date of Launch", "Genre", "Has Teaser");
            List<Movie> list = favoriteDao.getAllFavorites(1).getFavoriteList();
            for (Movie movie : list) {
                System.out.println(movie);
            }

            System.out.println(
                    "No of Favorites: " + favoriteDao.getAllFavorites(1).getNoOfFavorite());
        } catch (FavoriteEmptyException e) {
            System.out.println(e);
        }
    }

    public static void testRemoveFavorites() {
        System.out.println("Remove Favorite: ");
        favoriteDao.removeFavoritesById(1, 4);
    }
}
