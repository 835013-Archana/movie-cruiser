package com.cognizant.movie.model;

import java.util.List;

public class Favorite {
    private List<Movie> favoriteList;
    private int noOfFavorite;

    public Favorite() {

    }

    public List<Movie> getFavoriteList() {
        return favoriteList;
    }

    public void setFavoriteList(List<Movie> favoriteList) {
        this.favoriteList = favoriteList;
    }

    public int getNoOfFavorite() {
        return noOfFavorite;
    }

    public void setNoOfFavorite(int noOfFavorite) {
        this.noOfFavorite = noOfFavorite;
    }

    @Override
    public String toString() {
        return "Favorite [favoriteList=" + favoriteList + ", total=" + noOfFavorite + "]";
    }

}
