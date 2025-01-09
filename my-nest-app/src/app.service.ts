import { Injectable } from '@nestjs/common';

@Injectable()
export class AppService {
  getHello(): string {
    return 'Api is Up!, use / with the service name to reach the service!';
  }
}
