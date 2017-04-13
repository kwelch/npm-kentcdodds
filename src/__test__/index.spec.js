import kwelch from '../index';

describe('kwelch', () => {
  it('should return consistent object', () => {
    expect(kwelch).toMatchSnapshot();
  });
});
