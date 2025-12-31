// Akobo Data Science Example (C++)

#include <iostream>
#include <vector>
#include <cmath>
using namespace std;

double mean(const vector<double>& v) {
    double s = 0;
    for (double x : v) s += x;
    return s / v.size();
}

int main() {
    vector<int> years = {2018, 2019, 2020, 2021, 2022, 2023};
    vector<double> rainfall = {820, 790, 860, 900, 880, 910};
    vector<double> population = {42000, 43500, 45000, 46800, 49000, 51500};

    double avgPop = mean(population);
    cout << "Average Population of Akobo: " << avgPop << endl;

    // Linear Regression
    double meanX = mean(rainfall);
    double meanY = mean(population);

    double num = 0, den = 0;
    for (size_t i = 0; i < rainfall.size(); i++) {
        num += (rainfall[i] - meanX) * (population[i] - meanY);
        den += pow(rainfall[i] - meanX, 2);
    }

    double slope = num / den;
    double intercept = meanY - slope * meanX;

    double futureRainfall = 950;
    double predictedPop = intercept + slope * futureRainfall;

    cout << "Predicted Population with 950mm rainfall: "
         << (int)predictedPop << endl;

    return 0;
}
