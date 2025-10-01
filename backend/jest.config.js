module.exports = {
  testEnvironment: 'node',
  coverageDirectory: 'coverage',
  collectCoverageFrom: [
    'services/**/*.js',
    'routes/**/*.js',
    '!**/*.test.js',
  ],
  testMatch: ['**/tests/**/*.test.js'],
};
