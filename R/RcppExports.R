# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' @title Initialise boosting with chosen accelerator hardware (x86, AVX, FMA)
#' 
#' @param data Matrix
#' @param stepno Amount of steps
#' @param mode_ Accelerator mode (0: x86, 1: FMA, 2: AVX)
#' @return none
cpp_filter_base <- function(data, stepno = 20L, mode_ = 2L) {
    invisible(.Call('_netboost_filter_base', PACKAGE = 'netboost', data, stepno, mode_))
}

#' @title Boosting cleanup (required to free memory)
#' 
#' @return none
cpp_filter_end <- function() {
    invisible(.Call('_netboost_filter_end', PACKAGE = 'netboost'))
}

#' @title Single boosting step
#' 
#' @details Must be initialised before using @see{filter_base}
#' 
#' @param col_y Row in data matrix
#' @return integer vector
cpp_filter_step <- function(col_y) {
    .Call('_netboost_rcpp_filter_step', PACKAGE = 'netboost', col_y)
}

#' @title Function to calcutate distance
#' @details
#' Steps:
#'   1. - Sequential preparation of index and partner caches per value in filter
#'   2. - Parallel calculation of the distances with cached vectors
#'
#' @param filter Filter matrix
#' @param adjacency Vector
#' @return numeric vector
cpp_dist_tom <- function(filter, adjacency) {
    .Call('_netboost_dist_tom', PACKAGE = 'netboost', filter, adjacency)
}

#' @title Tree search.
#' @name cpp_tree_search
#' 
#' @description
#' Constraint: IDs 0 <= x (Integer)
#' 
#' @backref src/tree_sort.cpp 
#'
#' @param netboost_forest Input-matrix (4 columns, ids in colum 0,1,3)
#' @return List
#'
cpp_tree_search <- function(netboost_forest) {
    .Call('_netboost_tree_search', PACKAGE = 'netboost', netboost_forest)
}

