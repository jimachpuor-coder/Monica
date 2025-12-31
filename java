// Akobo Data Analysis & Simple AI (Java)

public class AkoboAnalysis {

    public static void main(String[] args) {
        int[] years = {2018, 2019, 2020, 2021, 2022, 2023};
        double[] rainfall = {820, 790, 860, 900, 880, 910};
        double[] population = {42000, 43500, 45000, 46800, 49000, 51500};

        // Average population
        double sum = 0;
        for (double p : population) sum += p;
        double avgPopulation = sum / population.length;

        System.out.println("Average Population of Akobo: " + avgPopulation);

        // Simple Linear Regression (Population vs Rainfall)
        double meanX = mean(rainfall);
        double meanY = mean(population);

        double num = 0, den = 0;
        for (int i = 0; i < rainfall.length; i++) {
            num += (rainfall[i] - meanX) * (population[i] - meanY);
            den += Math.pow(rainfall[i] - meanX, 2);
        }

        double slope = num / den;
        double intercept = meanY - slope * meanX;

        double futureRainfall = 950;
        double predictedPopulation = intercept + slope * futureRainfall;

        System.out.println("Predicted Population with 950mm rainfall: " +
                Math.round(predictedPopulation));
    }

    static double mean(double[] arr) {
        double s = 0;
        for (double v : arr) s += v;
        return s / arr.length;
    }
}
